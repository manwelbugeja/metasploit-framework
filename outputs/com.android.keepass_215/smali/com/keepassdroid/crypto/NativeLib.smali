.class public Lcom/keepassdroid/crypto/NativeLib;
.super Ljava/lang/Object;
.source "NativeLib.java"


# static fields
.field private static isLoaded:Z = false

.field private static loadSuccess:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/keepassdroid/crypto/NativeLib;->isLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "final-key"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "argon2"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/keepassdroid/crypto/NativeLib;->isLoaded:Z

    .line 39
    sput-boolean v0, Lcom/keepassdroid/crypto/NativeLib;->loadSuccess:Z

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/keepassdroid/crypto/NativeLib;->loadSuccess:Z

    return v0
.end method

.method public static loaded()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    move-result v0

    return v0
.end method
