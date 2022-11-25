.class public Lcom/keepassdroid/crypto/keyDerivation/Argon2Native;
.super Ljava/lang/Object;
.source "Argon2Native.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nTransformMasterKey([B[BIJJ[B[BJI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static transformKey([B[BIJJ[B[BJI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    .line 33
    invoke-static/range {p0 .. p11}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Native;->nTransformMasterKey([B[BIJJ[B[BJI)[B

    move-result-object p0

    return-object p0
.end method
