.class La/b/a/c/b$c;
.super La/b/a/c/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/c/b$b;-><init>()V

    return-void
.end method
