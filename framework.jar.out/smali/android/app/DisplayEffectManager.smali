.class public Landroid/app/DisplayEffectManager;
.super Ljava/lang/Object;
.source "DisplayEffectManager.java"


# static fields
.field public static final AUTO_MODE:I = 0x1

.field public static final CAMERA_MODE:I = 0x6

.field public static final CHECK_MODE_ERROR:I = -0x4

.field public static final CHECK_PER_ERROR:I = -0x3

.field public static final COMFORT_MODE:I = 0x3

.field public static final CUSTOM_MODE:I = 0x0

.field public static final EX_ERROR:I = -0x2

.field public static final INVALID_MODE:I = -0x1

.field public static final NORMAL_MODE:I = 0x2

.field public static final OUTSIDE_MODE:I = 0x4

.field public static final PICTURE_MODE:I = 0x7

.field public static final REAL_MODE:I = 0x14

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_OK:I = 0x1

.field public static final ULTRA_BRIGHT_MODE:I = 0x5

.field private static mService:Landroid/app/IDisplayEffectManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/DisplayEffectManager;->mICallBack:Landroid/os/IBinder;

    .line 36
    iput-object p1, p0, Landroid/app/DisplayEffectManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private static getService()Landroid/app/IDisplayEffectManager;
    .locals 2

    .prologue
    .line 41
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    .line 46
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 44
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "display_effect"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IDisplayEffectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IDisplayEffectManager;

    move-result-object v1

    sput-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    .line 46
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    goto :goto_0
.end method


# virtual methods
.method public getCurrentLevel(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 77
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 79
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->getCurrentLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 81
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 115
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 117
    :goto_0
    return v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 52
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getSupportedDisplayEffect()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 54
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 68
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 70
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->getSupportedMaxLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    :goto_0
    return v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 61
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getSupportedMode()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDisplayEffectLevel(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 86
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 88
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/IDisplayEffectManager;->setDisplayEffectLevel(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 90
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 95
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 97
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/DisplayEffectManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/DisplayEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IDisplayEffectManager;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 99
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public setModeFromSettings(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 104
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    move-result-object v1

    .line 106
    .local v1, "service":Landroid/app/IDisplayEffectManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/DisplayEffectManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/DisplayEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IDisplayEffectManager;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 108
    :goto_0
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, -0x2

    goto :goto_0
.end method