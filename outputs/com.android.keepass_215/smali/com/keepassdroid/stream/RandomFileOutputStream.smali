.class public Lcom/keepassdroid/stream/RandomFileOutputStream;
.super Ljava/io/OutputStream;
.source "RandomFileOutputStream.java"


# instance fields
.field mFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

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

    .line 36
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 38
    iget-object v0, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    iget-object v0, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 45
    iget-object v0, p0, Lcom/keepassdroid/stream/RandomFileOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
