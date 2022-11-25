.class public interface abstract Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;
.super Ljava/lang/Object;
.source "BiometricHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/biometric/BiometricHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BiometricCallback"
.end annotation


# virtual methods
.method public abstract handleDecryptedResult(Ljava/lang/String;)V
.end method

.method public abstract handleEncryptedResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onException()V
.end method

.method public abstract onException(I)V
.end method

.method public abstract onException(Ljava/lang/CharSequence;)V
.end method

.method public abstract onException(Z)V
.end method

.method public abstract onInvalidKeyException()V
.end method

.method public abstract onKeyInvalidated()V
.end method
