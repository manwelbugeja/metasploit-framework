.class La/b/a/c/b$e;
.super La/b/a/c/b$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/c/b$d;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    return p1
.end method
