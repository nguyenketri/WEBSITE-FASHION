// Lắng nghe sự kiện trên toàn bộ bảng (event delegation)
document.querySelector('.table-responsive').addEventListener('click', function (e) {
    if (e.target.classList.contains('btnSub') || e.target.classList.contains('btnAdd')) {
        const form = e.target.closest('form'); // Tìm form cha gần nhất
        const amountElement = form.querySelector('.amount');
        const amountInput = form.querySelector('.amountInput');

        let amount = parseInt(amountElement.innerText);

        // Kiểm tra nút nhấn và cập nhật số lượng
        if (e.target.classList.contains('btnSub') && amount > 1) {
            amount--;
        } else if (e.target.classList.contains('btnAdd')) {
            amount++;
        }

        // Cập nhật giao diện và input ẩn
        amountElement.innerText = amount;
        amountInput.value = amount;

        console.log(`Số lượng mới: ${amount}`);
    }
});