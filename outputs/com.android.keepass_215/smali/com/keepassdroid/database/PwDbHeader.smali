.class public abstract Lcom/keepassdroid/database/PwDbHeader;
.super Ljava/lang/Object;
.source "PwDbHeader.java"


# static fields
.field public static final PWM_DBSIG_1:I = -0x655d26fd


# instance fields
.field public encryptionIV:[B

.field public masterSeed:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lcom/keepassdroid/database/PwDbHeader;->encryptionIV:[B

    return-void
.end method
