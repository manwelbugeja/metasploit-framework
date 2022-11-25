.class public Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;
.super Ljava/lang/Object;
.source "PwDbInnerHeaderOutputV4.java"


# instance fields
.field private db:Lcom/keepassdroid/database/PwDatabaseV4;

.field private header:Lcom/keepassdroid/database/PwDbHeaderV4;

.field private los:Lcom/keepassdroid/stream/LEDataOutputStream;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    .line 41
    iput-object p2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    .line 43
    new-instance p1, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {p1, p3}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    return-void
.end method


# virtual methods
.method public output()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 48
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    iget v2, v2, Lcom/keepassdroid/database/CrsAlgorithm;->id:I

    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    array-length v0, v0

    .line 52
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 53
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v2, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    .line 56
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v0}, Lcom/keepassdroid/database/BinaryPool;->binaries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/security/ProtectedBinary;

    .line 58
    invoke-virtual {v2}, Lcom/keepassdroid/database/security/ProtectedBinary;->isProtected()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-byte v3, v1

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 63
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v2}, Lcom/keepassdroid/database/security/ProtectedBinary;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 64
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v4, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 66
    invoke-virtual {v2}, Lcom/keepassdroid/database/security/ProtectedBinary;->getData()Ljava/io/InputStream;

    move-result-object v3

    .line 67
    invoke-virtual {v2}, Lcom/keepassdroid/database/security/ProtectedBinary;->length()I

    .line 68
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-static {v3, v2}, Lcom/keepassdroid/utils/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    .line 73
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    return-void
.end method
