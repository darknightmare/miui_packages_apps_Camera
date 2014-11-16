.class public Lcom/android/camera/MotionFocusManager;
.super Ljava/lang/Object;
.source "MotionFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MotionFocusManager$MainHandler;,
        Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    }
.end annotation


# instance fields
.field private mAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleTotal:D

.field private mDeviceStable:Z

.field private mEnabled:Z

.field private mGyrocopeTimeStamp:J

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mHandler:Landroid/os/Handler;

.field private mListenerRegister:Z

.field private final mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V
    .locals 4
    .parameter "context"
    .parameter "l"
    .parameter "looper"

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    .line 37
    iput-wide v2, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    .line 38
    iput-wide v2, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    .line 106
    new-instance v0, Lcom/android/camera/MotionFocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MotionFocusManager$1;-><init>(Lcom/android/camera/MotionFocusManager;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 151
    new-instance v0, Lcom/android/camera/MotionFocusManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/MotionFocusManager$2;-><init>(Lcom/android/camera/MotionFocusManager;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 55
    iput-object p2, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    .line 56
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometer:Landroid/hardware/Sensor;

    .line 58
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 59
    new-instance v0, Lcom/android/camera/MotionFocusManager$MainHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/camera/MotionFocusManager$MainHandler;-><init>(Lcom/android/camera/MotionFocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MotionFocusManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/MotionFocusManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MotionFocusManager;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/camera/MotionFocusManager;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic access$218(Lcom/android/camera/MotionFocusManager;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/MotionFocusManager;D)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MotionFocusManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/MotionFocusManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/camera/MotionFocusManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/camera/MotionFocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/MotionFocusManager;->deviceBecomeStable()V

    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceBecomeStable()V

    .line 215
    :cond_0
    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1
    .parameter "a"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->onDeviceKeepMoving(D)V

    .line 223
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-nez v0, :cond_0

    .line 76
    iput-boolean v1, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    .line 78
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/MotionFocusManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 79
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MotionFocusManager;->mAngleTotal:D

    .line 102
    iput-boolean v2, p0, Lcom/android/camera/MotionFocusManager;->mDeviceStable:Z

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MotionFocusManager;->mAccelerometerTag:I

    .line 104
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    .line 64
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/MotionFocusManager;->reset()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    .line 94
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/MotionFocusManager;->mAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/MotionFocusManager;->mListenerRegister:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0
.end method
