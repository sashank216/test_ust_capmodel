module.exports = async (srv) => {

    srv.on('greetings', (req,res) => {
        return "good  morning" + req.data.name;
    });

    srv.on('total', (req,res) => {
        total = req.data.num1 * req.data.num2;
        return total;
    })
};