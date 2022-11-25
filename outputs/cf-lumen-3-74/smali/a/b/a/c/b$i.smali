.class La/b/a/c/b$i;
.super La/b/a/c/b$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/c/b$h;-><init>()V

    return-void
.end method
