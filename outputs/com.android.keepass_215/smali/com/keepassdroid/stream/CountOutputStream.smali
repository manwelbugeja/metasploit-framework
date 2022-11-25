.class public Lcom/keepassdroid/stream/CountOutputStream;
.super Ljava/io/OutputStream;
.source "CountOutputStream.java"


# instance fields
.field bytes:J

.field os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    .line 30
    iput-object p1, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

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
    iget-object v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

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

    .line 41
    iget-object v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    .line 60
    iget-object v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->bytes:J

    .line 48
    iget-object v0, p0, Lcom/keepassdroid/stream/CountOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
