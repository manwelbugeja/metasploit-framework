.class La/b/a/c/b$b;
.super La/b/a/c/b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/c/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    return p1
.end method
