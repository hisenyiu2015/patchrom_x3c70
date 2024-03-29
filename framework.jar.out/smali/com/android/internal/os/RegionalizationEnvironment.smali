.class public Lcom/android/internal/os/RegionalizationEnvironment;
.super Ljava/lang/Object;
.source "RegionalizationEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SPEC_FILE_PATH:Ljava/lang/String; = "/persist/speccfg/spec"

.field private static final SUPPORTED:Z

.field private static final TAG:Ljava/lang/String; = "RegionalizationEnvironment"

.field private static isLoaded:Z

.field private static mCarriers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/RegionalizationEnvironment$Carrier;",
            ">;"
        }
    .end annotation
.end field

.field private static mExcludedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "persist.regionalization.support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    .line 58
    sput-boolean v1, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method public static getAllCarrierDirectories()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "directories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    sget-object v3, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;

    .line 104
    .local v0, "c":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    const-string v3, "RegionalizationEnvironment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarrierDirectoriy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "c":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    :cond_0
    return-object v1
.end method

.method public static getAllCarrierNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "carriers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;

    .line 92
    .local v0, "c":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v0    # "c":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    :cond_0
    return-object v1
.end method

.method public static getCarriersCount()I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    return-object v0
.end method

.method public static getStoragePos()Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    sget-object v4, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;

    .line 137
    .local v0, "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getStoragePos()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "pos":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    .end local v0    # "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    .end local v3    # "pos":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 142
    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 143
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Read wrong carrier!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "RegionalizationEnvironment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get storage pos error, caused by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, ""

    goto :goto_0
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 60
    const-string v1, "regionalization"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IRegionalizationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IRegionalizationService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    .line 62
    sget-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadSwitchedCarriers()V

    .line 64
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadExcludedApplist()V

    .line 65
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    .line 67
    :cond_0
    return-void
.end method

.method public static isExclucdedApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getCarriersCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->init()V

    .line 76
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    return v0
.end method

.method private static loadExcludedApplist()V
    .locals 13

    .prologue
    .line 217
    const-string v10, "RegionalizationEnvironment"

    const-string v11, "loadExcludedApps!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getCarriersCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 245
    .local v2, "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    .local v4, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "excListFilePath":Ljava/lang/String;
    :cond_0
    return-void

    .line 221
    .end local v2    # "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    .end local v4    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "excListFilePath":Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v2    # "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    .restart local v4    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "excListFilePath":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    check-cast v2, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;

    .line 222
    .restart local v2    # "carrier":Lcom/android/internal/os/RegionalizationEnvironment$Carrier;
    const-string v10, "RegionalizationEnvironment"

    .end local v4    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "excListFilePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "load excluded apps for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;->getExcludedListFilePath()Ljava/lang/String;

    move-result-object v6

    .line 224
    .restart local v6    # "excListFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 226
    .restart local v4    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 232
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 234
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 235
    .local v9, "pos":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 236
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "apkName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 238
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    .end local v1    # "apkName":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "pos":I
    :catch_0
    move-exception v5

    .line 229
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadSwitchedCarriers()V
    .locals 13

    .prologue
    .line 152
    const-string v10, "RegionalizationEnvironment"

    const-string v11, "loadCarriers!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v5, 0x0

    .line 157
    .local v5, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v11, "/persist/speccfg/spec"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "packStorage="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 166
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Can\'t read carrier\'s storage pos!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, "e":Ljava/io/IOException;
    const-string v10, "RegionalizationEnvironment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load carriers error, caused by: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    return-void

    .line 159
    :catch_1
    move-exception v6

    .line 160
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "packStorage="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "storagePos":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 170
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Carrier\'s storage pos is wrong!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 174
    :cond_2
    const-string v2, "^packCount=[0-9]$"

    .line 175
    .local v2, "carrierNumRegularExpresstion":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 176
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Can\'t read carrier\'s count!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 178
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "packCount="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 180
    .local v4, "carriersNum":I
    if-lez v4, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, v4, :cond_5

    .line 181
    :cond_4
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Carrier\'s count is wrong!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 184
    :cond_5
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_1
    add-int/lit8 v10, v4, 0x2

    if-ge v8, v10, :cond_0

    .line 185
    const-string v3, "^strSpec[0-9]=\\w+$"

    .line 186
    .local v3, "carrierRegularExpresstion":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 187
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "strSpec"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "carrierName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v10

    if-nez v10, :cond_6

    .line 189
    const/4 v7, 0x0

    .line 191
    .local v7, "exists":Z
    :try_start_3
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    .line 197
    :goto_2
    if-eqz v7, :cond_7

    .line 198
    :try_start_4
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;

    invoke-direct {v11, v1, v8, v9}, Lcom/android/internal/os/RegionalizationEnvironment$Carrier;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v7    # "exists":Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 193
    .restart local v7    # "exists":Z
    :catch_2
    move-exception v6

    .line 194
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 200
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_7
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 201
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Read wrong carrier!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 205
    .end local v1    # "carrierName":Ljava/lang/String;
    .end local v7    # "exists":Z
    :cond_8
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mCarriers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 206
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Read wrong carrier!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method
