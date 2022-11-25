.class public Lcom/keepassdroid/database/save/PwDbV3OutputDebug;
.super Lcom/keepassdroid/database/save/PwDbV3Output;
.source "PwDbV3OutputDebug.java"


# instance fields
.field debugDb:Lcom/keepassdroid/database/PwDatabaseV3Debug;

.field private noHeaderHash:Z


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/keepassdroid/database/save/PwDbV3OutputDebug;-><init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV3Output;-><init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;)V

    .line 41
    check-cast p1, Lcom/keepassdroid/database/PwDatabaseV3Debug;

    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV3OutputDebug;->debugDb:Lcom/keepassdroid/database/PwDatabaseV3Debug;

    .line 42
    iput-boolean p3, p0, Lcom/keepassdroid/database/save/PwDbV3OutputDebug;->noHeaderHash:Z

    return-void
.end method


# virtual methods
.method protected setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/keepassdroid/database/PwDbHeaderV3;

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3OutputDebug;->debugDb:Lcom/keepassdroid/database/PwDatabaseV3Debug;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV3Debug;->dbHeader:Lcom/keepassdroid/database/PwDbHeaderV3;

    .line 52
    iget-object v1, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->encryptionIV:[B

    iget-object v2, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->encryptionIV:[B

    iget-object v3, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->encryptionIV:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v1, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    iget-object v2, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    iget-object v3, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v1, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    iget-object v0, v0, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    array-length v0, v0

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected useHeaderHash()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/keepassdroid/database/save/PwDbV3OutputDebug;->noHeaderHash:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
