.class public Lcom/keepassdroid/stream/MacOutputStream;
.super Ljava/io/OutputStream;
.source "MacOutputStream.java"


# instance fields
.field private mac:Ljavax/crypto/Mac;

.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Mac;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/keepassdroid/stream/MacOutputStream;->mac:Ljavax/crypto/Mac;

    .line 33
    iput-object p1, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getMac()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 49
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->mac:Ljavax/crypto/Mac;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 61
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 55
    iget-object v0, p0, Lcom/keepassdroid/stream/MacOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
