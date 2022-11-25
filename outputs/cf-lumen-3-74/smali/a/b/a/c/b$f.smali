.class La/b/a/c/b$f;
.super La/b/a/c/b$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/c/b$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
