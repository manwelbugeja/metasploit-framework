.class public abstract Lcom/keepassdroid/database/save/PwDbOutput;
.super Ljava/lang/Object;
.source "PwDbOutput.java"


# instance fields
.field protected mOS:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbOutput;->mOS:Ljava/io/OutputStream;

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwDatabase;Ljava/io/OutputStream;)Lcom/keepassdroid/database/save/PwDbOutput;
    .locals 1

    .line 37
    instance-of v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/keepassdroid/database/save/PwDbV3Output;

    check-cast p0, Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-direct {v0, p0, p1}, Lcom/keepassdroid/database/save/PwDbV3Output;-><init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;)V

    return-object v0

    .line 39
    :cond_0
    instance-of v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/keepassdroid/database/save/PwDbV4Output;

    check-cast p0, Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Ljava/io/OutputStream;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract output()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation
.end method

.method public abstract outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation
.end method

.method protected setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 53
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeader;->encryptionIV:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 58
    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeader;->masterSeed:[B

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0

    .line 55
    :catch_0
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Does not support secure random number generation."

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
