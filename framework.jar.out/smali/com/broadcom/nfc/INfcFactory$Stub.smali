.class public abstract Lcom/broadcom/nfc/INfcFactory$Stub;
.super Landroid/os/Binder;
.source "INfcFactory.java"

# interfaces
.implements Lcom/broadcom/nfc/INfcFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/nfc/INfcFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/nfc/INfcFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.nfc.INfcFactory"

.field static final TRANSACTION_getBrcmSecureElementInterface:I = 0x3

.field static final TRANSACTION_getConfigInterface:I = 0x1

.field static final TRANSACTION_getDtaInterface:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.nfc.INfcFactory"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/nfc/INfcFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/nfc/INfcFactory;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.broadcom.nfc.INfcFactory"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/nfc/INfcFactory;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/nfc/INfcFactory;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/broadcom/nfc/INfcFactory$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/nfc/INfcFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "com.broadcom.nfc.INfcFactory"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.broadcom.nfc.INfcFactory"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/broadcom/nfc/INfcFactory$Stub;->getConfigInterface()Lcom/broadcom/nfc/INfcAdapterBrcmConfig;

    move-result-object v0

    .line 53
    .local v0, "_result":Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/broadcom/nfc/INfcAdapterBrcmConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v1, v2

    .line 55
    goto :goto_0

    .line 59
    .end local v0    # "_result":Lcom/broadcom/nfc/INfcAdapterBrcmConfig;
    :sswitch_2
    const-string v3, "com.broadcom.nfc.INfcFactory"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/broadcom/nfc/INfcFactory$Stub;->getDtaInterface()Lcom/broadcom/nfc/INfcAdapterDta;

    move-result-object v0

    .line 61
    .local v0, "_result":Lcom/broadcom/nfc/INfcAdapterDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/broadcom/nfc/INfcAdapterDta;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v1, v2

    .line 63
    goto :goto_0

    .line 67
    .end local v0    # "_result":Lcom/broadcom/nfc/INfcAdapterDta;
    :sswitch_3
    const-string v3, "com.broadcom.nfc.INfcFactory"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/broadcom/nfc/INfcFactory$Stub;->getBrcmSecureElementInterface()Lcom/broadcom/nfc/INfcBrcmSecureElement;

    move-result-object v0

    .line 69
    .local v0, "_result":Lcom/broadcom/nfc/INfcBrcmSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/broadcom/nfc/INfcBrcmSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method