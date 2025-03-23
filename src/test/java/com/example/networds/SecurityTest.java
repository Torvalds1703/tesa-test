package com.example.networds;


public class SecurityTest {

    /*@Test
    public void testUpdateMessageAuthentication() throws Exception {
        // Создаем Mock объекты для UserRepository, MessageRepository и Authentication
        UserRepository userRepository = mock(UserRepository.class);
        MessageRepository messageRepository = mock(MessageRepository.class);
        Authentication authentication = mock(Authentication.class);

        // Создаем экземпляр контроллера
        MessageController messageController = new MessageController(userRepository, messageRepository);

        // Подготавливаем данные для теста
        User currentUser = new User();
        Message message = new Message();
        message.setAuthor(currentUser);
        Long userId = 1L;
        String text = "Updated message text";
        String tag = "Updated tag";
        MultipartFile file = null; // Передаем null, чтобы указать отсутствие файла

        // Мокируем SecurityContext и настраиваем его для возвращения аутентификации
        SecurityContext securityContext = mock(SecurityContext.class);
        SecurityContextHolder.setContext(securityContext);
        when(securityContext.getAuthentication()).thenReturn(authentication);

        // Настраиваем аутентификацию для текущего пользователя
        when(authentication.getPrincipal()).thenReturn(currentUser);

        // Вызываем метод контроллера, который нужно протестировать
        String result = messageController.updateMessage(currentUser, userId, message, text, tag, file);

        // Проверяем, что сообщение было сохранено в репозитории
        verify(messageRepository, times(1)).save(message);

        // Проверяем, что контроллер вернул ожидаемый URL для перенаправления
        assertEquals("redirect:/user-messages/" + userId, result);
    }*/


}
