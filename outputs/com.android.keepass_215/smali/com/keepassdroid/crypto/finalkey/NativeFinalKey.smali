.class public Lcom/keepassdroid/crypto/finalkey/NativeFinalKey;
.super Lcom/keepassdroid/crypto/finalkey/FinalKey;
.source "NativeFinalKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/keepassdroid/crypto/finalkey/FinalKey;-><init>()V

    return-void
.end method

.method public static availble()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    move-result v0

    return v0
.end method

.method private static native nTransformMasterKey([B[BJ)[B
.end method


# virtual methods
.method public transformMasterKey([B[BJ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    .line 37
    invoke-static {p1, p2, p3, p4}, Lcom/keepassdroid/crypto/finalkey/NativeFinalKey;->nTransformMasterKey([B[BJ)[B

    move-result-object p1

    return-object p1
.end method
