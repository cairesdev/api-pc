async function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function processItemWithTimeoutAndRetries(
  processFunction,
  retries = 3,
  timeoutMs = 2000,
  delayMs = 1000
) {
  for (let attempt = 1; attempt <= retries; attempt++) {
    try {
      const result = await Promise.race([
        processFunction(),
        new Promise((_, reject) =>
          setTimeout(
            () => reject(new Error("Tempo limite excedido")),
            timeoutMs
          )
        ),
      ]);
      return result;
    } catch (error) {
      console.error(
        `Erro ao processar item (tentativa ${attempt} de ${retries}):`,
        error.message
      );
      if (attempt < retries) {
        await delay(delayMs); // Espera antes de tentar novamente
      } else {
        throw new Error("Máximo de tentativas atingido ou timeout");
      }
    }
  }
}

module.exports = { processItemWithTimeoutAndRetries, delay };
