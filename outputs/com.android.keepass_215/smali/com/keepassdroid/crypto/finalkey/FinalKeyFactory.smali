.class public Lcom/keepassdroid/crypto/finalkey/FinalKeyFactory;
.super Ljava/lang/Object;
.source "FinalKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFinalKey()Lcom/keepassdroid/crypto/finalkey/FinalKey;
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Lcom/keepassdroid/crypto/finalkey/FinalKeyFactory;->createFinalKey(Z)Lcom/keepassdroid/crypto/finalkey/FinalKey;

    move-result-object v0

    return-object v0
.end method

.method public static createFinalKey(Z)Lcom/keepassdroid/crypto/finalkey/FinalKey;
    .locals 1

    .line 31
    invoke-static {}, Lcom/keepassdroid/crypto/CipherFactory;->deviceBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/keepassdroid/crypto/finalkey/NativeFinalKey;->availble()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    new-instance p0, Lcom/keepassdroid/crypto/finalkey/NativeFinalKey;

    invoke-direct {p0}, Lcom/keepassdroid/crypto/finalkey/NativeFinalKey;-><init>()V

    return-object p0

    .line 35
    :cond_0
    new-instance p0, Lcom/keepassdroid/crypto/finalkey/AndroidFinalKey;

    invoke-direct {p0}, Lcom/keepassdroid/crypto/finalkey/AndroidFinalKey;-><init>()V

    return-object p0
.end method
