const inputChatHandler = (request, h) => {
    const { intents = { tag, patterns, responses, context } } = request.payload;

    const id = nanoid(10);
    const Date = new Date().toISOString();
};


module.exports = { inputChatHandler };