.class public abstract Leu/chainfire/librootjava/IRootIPC$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Leu/chainfire/librootjava/IRootIPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/librootjava/IRootIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/librootjava/IRootIPC$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "eu.chainfire.librootjava.IRootIPC"

.field static final TRANSACTION_bye:I = 0x3

.field static final TRANSACTION_getUserIPC:I = 0x2

.field static final TRANSACTION_hello:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "eu.chainfire.librootjava.IRootIPC"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Leu/chainfire/librootjava/IRootIPC;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "eu.chainfire.librootjava.IRootIPC"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Leu/chainfire/librootjava/IRootIPC;

    if-eqz v1, :cond_1

    check-cast v0, Leu/chainfire/librootjava/IRootIPC;

    return-object v0

    :cond_1
    new-instance v0, Leu/chainfire/librootjava/IRootIPC$Stub$Proxy;

    invoke-direct {v0, p0}, Leu/chainfire/librootjava/IRootIPC$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "eu.chainfire.librootjava.IRootIPC"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Leu/chainfire/librootjava/IRootIPC;->bye(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Leu/chainfire/librootjava/IRootIPC;->getUserIPC()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Leu/chainfire/librootjava/IRootIPC;->hello(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
