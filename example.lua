-- Создаём ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

-- Основная панель (уменьшенный размер)
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)  -- центр экрана, смещение на половину размера
Frame.Size = UDim2.new(0, 300, 0, 150)  -- компактные габариты
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Active = false  -- отключено перетаскивание
Frame.Draggable = false

-- Закругление углов панели
local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 12)  -- слегка уменьшенный радиус

-- Центральный текст
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)  -- точное центрирование
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)  -- точка привязки к центру
TextLabel.Size = UDim2.new(0, 260, 0, 40)  -- ширина меньше панели для отступов
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 50
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextXAlignment = Enum.TextXAlignment.Center  -- выравнивание по горизонтали
TextLabel.TextYAlignment = Enum.TextYAlignment.Center  -- выравнивание по вертикали

-- Плавное исчезновение через 5 секундh
task.delay(2, function()
    game:GetService("TweenService"):Create(
        Frame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {BackgroundTransparency = 1}
    ):Play()
    
    -- Через 0.5 сек (после анимации) можно удалить элемент для оптимизации
    task.delay(0.5, function()
        ScreenGui:Destroy()
    end)
end)

wait(3.5)

-- Создаём ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

-- Основная панель (уменьшенный размер)
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Position = UDim2.new(1, -220, 1, -170)  -- правый нижний угол с отступами 20px
Frame.Size = UDim2.new(0, 200, 0, 80)  -- компактные габариты
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Active = false  -- отключено перетаскивание
Frame.Draggable = false

-- Закругление углов панели
local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 12)  -- слегка уменьшенный радиус

-- Центральный текст
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)  -- точное центрирование внутри фрейма
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)  -- точка привязки к центру
TextLabel.Size = UDim2.new(0, 160, 0, 40)  -- ширина с отступами
TextLabel.Text = "by AntiScam975"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20  -- адаптирован под меньший размер окна
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextXAlignment = Enum.TextXAlignment.Center  -- выравнивание по горизонтали
TextLabel.TextYAlignment = Enum.TextYAlignment.Center  -- выравнивание по вертикали

-- Плавное исчезновение через 5 секунд
task.delay(2.5, function()
    game:GetService("TweenService"):Create(
        Frame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
        {BackgroundTransparency = 1}
    ):Play()
    
    -- Через 0.5 сек (после анимации) удаляем элемент
    task.delay(0.5, function()
        ScreenGui:Destroy()
    end)
end)

-- 1. Импортируем сервисы
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- 2. Ждём готовности игрока
local player = Players.LocalPlayer
repeat wait(0.1) until player and player.Character and player.Character:FindFirstChild("HumanoidRootPart")

-- 3. Создаём GUI в PlayerGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LerkuHUB_GUI"
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false  -- Не удалять при респавне!
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 4. Основная панель
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Position = UDim2.new(0.5, -350, 0.5, -200)
Frame.Size = UDim2.new(0, 700, 0, 400)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 0.3
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Selectable = false

-- 5. Закругление углов
local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 15)

-- 6. Текст заголовка
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Parent = Frame
TitleLabel.Position = UDim2.new(0, 15, 0, 15)
TitleLabel.Size = UDim2.new(0, 500, 0, 50)
TitleLabel.Text = "LerkuHUB│BABFT PREMIUM"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 30
TitleLabel.BackgroundTransparency = 1
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- 7. Кнопка закрытия
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Frame
CloseButton.Position = UDim2.new(1, -50, 0, 15)
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Text = "×"
CloseButton.TextSize = 28
CloseButton.TextColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CloseButton.BackgroundTransparency = 0.2
CloseButton.BorderSizePixel = 0
CloseButton.AutoButtonColor = true

local CloseCorner = Instance.new("UICorner")
CloseCorner.Parent = CloseButton
CloseCorner.CornerRadius = UDim.new(0, 10)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- 8. Настройка телепорта (только 3 координаты!)
local FARM_POSITION = Vector3.new(-51.5656433, 65.0000458, 1369.09009)

-- 9. Кнопка AutoFarm (размещена под заголовком)
local AutoFarmButton = Instance.new("TextButton")
AutoFarmButton.Parent = Frame
AutoFarmButton.Position = UDim2.new(
    0,                          -- X: от левого края
    TitleLabel.Position.X.Offset, -- Совпадает с левым краем заголовка
    0,
    TitleLabel.Position.Y.Offset + TitleLabel.Size.Y.Offset + 30  -- Под заголовком + отступ
)
AutoFarmButton.Size = UDim2.new(0, 300, 0, 60)
AutoFarmButton.Text = "AutoFarm: ВЫКЛ"
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
AutoFarmButton.BackgroundTransparency = 0.1
AutoFarmButton.BorderSizePixel = 0
AutoFarmButton.TextSize = 24
AutoFarmButton.Font = Enum.Font.SourceSansBold
AutoFarmButton.AutoButtonColor = true
AutoFarmButton.Modal = false
AutoFarmButton.Selectable = true
AutoFarmButton.Active = true

local AutoFarmCorner = Instance.new("UICorner")
AutoFarmCorner.Parent = AutoFarmButton
AutoFarmCorner.CornerRadius = UDim.new(0, 12)

-- 10. Состояние и корутина для AutoFarm
local isAutoFarmActive = false
local autoFarmThread = nil

-- 11. Функция телепортации
local function teleportToFarm()
    local character = player.Character
    if not character then return end
    local root = character:FindFirstChild("HumanoidRootPart")
    if root then
        root.CFrame = CFrame.new(FARM_POSITION)
        print("[LerkuHUB] Телепортация выполнена")
    end
end

-- 12. Обработчик нажатия для AutoFarm
AutoFarmButton.MouseButton1Click:Connect(function()
    isAutoFarmActive = not isAutoFarmActive
    
    if isAutoFarmActive then
        AutoFarmButton.Text = "AutoFarm: ВКЛ"
        AutoFarmButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        
        -- Запускаем бесконечный цикл в корутине
        autoFarmThread = coroutine.create(function()
            while isAutoFarmActive do
                teleportToFarm()
                wait(5)  -- Интервал между телепортациями (в секундах)
            end
        end)
        coroutine.resume(autoFarmThread)
        
        print("[LerkuHUB] AutoFarm активирован (непрерывная телепортация)")
    else
        AutoFarmButton.Text = "AutoFarm: ВЫКЛ"
        AutoFarmButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        
        -- Останавливаем корутину
        if autoFarmThread then
            autoFarmThread = nil
            print("[LerkuHUB] AutoFarm деактивирован")
        end
    end
end)

-- 13. Кнопка Anti‑AFK (справа от AutoFarm)
local AntiAfkButton = Instance.new("TextButton")
AntiAfkButton.Parent = Frame
AntiAfkButton.Position = UDim2.new(
    0,
    AutoFarmButton.Position.X.Offset + AutoFarmButton.Size.X.Offset + 20,  -- Справа от AutoFarm с отступом
    0,
    AutoFarmButton.Position.Y.Offset  -- На том же уровне по вертикали
)
AntiAfkButton.Size = UDim2.new(0, 300, 0, 60)
AntiAfkButton.Text = "Anti‑AFK: ВЫКЛ"
AntiAfkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiAfkButton.BackgroundColor3 = Color3.fromRGB(50, 50, 200)
AntiAfkButton.BackgroundTransparency = 0.1
AntiAfkButton.BorderSizePixel = 0
AntiAfkButton.TextSize = 24
AntiAfkButton.Font = Enum.Font.SourceSansBold
AntiAfkButton.AutoButtonColor = true
AntiAfkButton.Modal = false
AntiAfkButton.Selectable = true
AntiAfkButton.Active = true

local AntiAfkCorner = Instance.new("UICorner")
AntiAfkCorner.Parent = AntiAfkButton
AntiAfkCorner.CornerRadius = UDim.new(0, 12)

-- 14. Состояние и таймер для Anti‑AFK
local isAntiAfkActive = false
local antiAfkThread = nil

-- 15. Функция имитации действия (лёгкое смещение персонажа)
local function simulateMovement()
    local character = player.Character
    if not character then return end
    
    local root = character:FindFirstChild("HumanoidRootPart")
    if root then
        -- Сдвигаем на 0.1 студа вперёд, затем возвращаемся
        root.CFrame = root.CFrame * CFrame.new(0, 0, -0.1)
        wait(0.5)  -- Короткая пауза
        root.CFrame = root.CFrame * CFrame.new(0, 0, 0.1)  -- Возврат в исходное положение
        
        print("[LerkuHUB] Anti‑AFK: выполнено имитационное движение")
    end
end

-- 16. Обработчик нажатия для Anti‑AFK
AntiAfkButton.MouseButton1Click:Connect(function()
    isAntiAfkActive = not isAntiAfkActive
    
    if isAntiAfkActive then
        AntiAfkButton.Text = "Anti‑AFK: ВКЛ"
        AntiAfkButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        
        -- Запускаем корутину с циклом
        antiAfkThread = coroutine.create(function()
            while isAntiAfkActive do
                simulateMovement()
                wait(18 * 60)  -- 18 минут в секундах
            end
        end)
        coroutine.resume(antiAfkThread)
        
        print("[LerkuHUB] Anti‑AFK активирован (каждые 18 мин)")
    else
        AntiAfkButton.Text = "Anti‑AFK: ВЫКЛ"
        AntiAfkButton.BackgroundColor3 = Color3.fromRGB(50, 50, 200)
        
        -- Останавливаем корутину
        if antiAfkThread then
            antiAfkThread = nil
            print("[LerkuHUB] Anti‑AFK деактивирован")
        end
    end
end)

-- 17. Защита от удаления GUI
player.ChildRemoved:Connect(function(child)
    if child == player.PlayerGui then
        ScreenGui:Destroy()
    end
end)

-- 18. Сообщение о готовности
print("[LerkuHUB] GUI успешно загружен. Кнопки AutoFarm и Anti‑AFK готовы к использованию.")
