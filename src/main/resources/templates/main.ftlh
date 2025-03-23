<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container-fluid mt-4">
        <div class="d-flex justify-content-end mb-3">
            <button class="btn btn-primary" id="add-task">+ Добавить задачу</button>
        </div>
        <div class="row gx-2">
            <#list ["To Do", "In Progress", "Analysis", "Done"] as status>
                <div class="col-md-3 d-flex flex-column">
                    <div class="card kanban-column h-100">
                        <div class="card-header text-white text-center ${status?replace(' ', '-')?lower_case}-header">
                            <h5 class="card-title">${status}</h5>
                        </div>
                        <div class="card-body kanban-column-body flex-grow-1" id="kanban-${status?replace(' ', '-')}">
                            <#if status == "To Do">
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-1">
                                    <div class="card-body">
                                        <h6 class="card-title">Разработать новый интерфейс</h6>
                                        <p class="card-text text-muted">Разработать новый дизайн интерфейса для веб-приложения, с улучшенной навигацией и эстетикой.</p>
                                        <span class="badge bg-primary">Высокий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-05-10</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-2">
                                    <div class="card-body">
                                        <h6 class="card-title">Исправить баги на странице входа</h6>
                                        <p class="card-text text-muted">Исправить ошибки в процессе авторизации на странице входа. Проверить валидацию.</p>
                                        <span class="badge bg-primary">Средний приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-04-20</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-3">
                                    <div class="card-body">
                                        <h6 class="card-title">Написать документацию для API</h6>
                                        <p class="card-text text-muted">Создать документацию для нового REST API. Описать все доступные эндпоинты и их параметры.</p>
                                        <span class="badge bg-primary">Низкий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-05-15</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            <#elseif status == "In Progress">
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-4">
                                    <div class="card-body">
                                        <h6 class="card-title">Разработка нового функционала</h6>
                                        <p class="card-text text-muted">Разработать функционал для добавления и удаления записей в базе данных.</p>
                                        <span class="badge bg-danger">Высокий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-04-30</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-5">
                                    <div class="card-body">
                                        <h6 class="card-title">Обновить версию библиотеки</h6>
                                        <p class="card-text text-muted">Обновить библиотеку до последней версии для обеспечения совместимости с новым API.</p>
                                        <span class="badge bg-danger">Средний приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-04-25</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            <#elseif status == "Analysis">
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-6">
                                    <div class="card-body">
                                        <h6 class="card-title">Анализ пользовательских требований</h6>
                                        <p class="card-text text-muted">Провести анализ требований пользователей и подготовить список необходимых функций для нового проекта.</p>
                                        <span class="badge bg-warning">Низкий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-04-10</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            <#elseif status == "Done">
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-7">
                                    <div class="card-body">
                                        <h6 class="card-title">Подготовка отчетности</h6>
                                        <p class="card-text text-muted">Подготовить ежемесячную отчетность по выполненным задачам и проектам.</p>
                                        <span class="badge bg-success">Низкий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-03-25</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-8">
                                    <div class="card-body">
                                        <h6 class="card-title">Обновление документации</h6>
                                        <p class="card-text text-muted">Обновить документацию по системе безопасности, добавив новые функции и рекомендации.</p>
                                        <span class="badge bg-success">Средний приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-03-28</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-9">
                                    <div class="card-body">
                                        <h6 class="card-title">Провести тренинг для команды</h6>
                                        <p class="card-text text-muted">Организовать тренинг по новым инструментам разработки для команды разработки.</p>
                                        <span class="badge bg-success">Высокий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-03-30</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card task-card mb-3" draggable="true" data-task-id="task-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Рефакторинг кода</h6>
                                        <p class="card-text text-muted">Рефакторить старый код для улучшения производительности и читабельности.</p>
                                        <span class="badge bg-success">Низкий приоритет</span>
                                        <div class="mt-2 d-flex justify-content-between">
                                            <span class="badge bg-info">Срок: 2025-04-01</span>
                                            <button class="btn btn-sm btn-warning">Edit</button>
                                        </div>
                                    </div>
                                </div>
                            </#if>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>

    <style>
        .kanban-column {
            background: #f4f6f9;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .kanban-column-body {
            min-height: 500px;
            overflow-y: hidden;
            padding: 10px;
        }
        .task-card {
            border-left: 5px solid #007bff;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            cursor: grab;
            transition: transform 0.3s ease;
            margin-bottom: 10px;
        }
        .task-card:active {
            cursor: grabbing;
            transform: scale(1.05);
        }
        .task-card .card-body {
            padding: 15px;
        }
        .task-card .card-title {
            font-size: 1.1rem;
            color: #343a40;
        }
        .badge {
            background-color: #e6e3e3;
        }
        .to-do-header {
            background-color: #007bff !important;
        }
        .in-progress-header {
            background-color: #e3342f !important;
        }
        .analysis-header {
            background-color: #ffb019 !important;
        }
        .done-header {
            background-color: #28a745 !important;
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const columns = document.querySelectorAll('.kanban-column-body');
            columns.forEach(column => {
                new Sortable(column, {
                    group: 'kanban',
                    animation: 150,
                    onEnd(evt) {
                        const taskId = evt.item.dataset.taskId || 'unknown-task'; // Значение по умолчанию
                        const newColumn = evt.to.id;
                        console.log(`Задача ${taskId} перемещена в ${newColumn}`);
                        saveTaskState(taskId, newColumn);
                    }
                });
            });

            function saveTaskState(taskId, newColumn) {
                console.log(`Состояние задачи ${taskId} сохранено в ${newColumn}`);
                // Здесь можно добавить логику для сохранения состояния задачи на сервере
            }
        });
    </script>
</@c.page>

<#include "parts/footer.ftlh"/>