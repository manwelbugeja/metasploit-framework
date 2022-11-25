.class public final Lcom/keepassdroid/crypto/AESProvider;
.super Ljava/security/Provider;
.source "AESProvider.java"


# static fields
.field private static final serialVersionUID:J = -0x3560fa4b948b76c2L


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AESProvider"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, ""

    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 33
    const-class v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher.AES"

    invoke-virtual {p0, v1, v0}, Lcom/keepassdroid/crypto/AESProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
