.class public La/b/a/c/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/c/b$i;,
        La/b/a/c/b$h;,
        La/b/a/c/b$g;,
        La/b/a/c/b$f;,
        La/b/a/c/b$e;,
        La/b/a/c/b$d;,
        La/b/a/c/b$c;,
        La/b/a/c/b$b;,
        La/b/a/c/b$a;,
        La/b/a/c/b$j;
    }
.end annotation


# static fields
.field static final a:La/b/a/c/b$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, La/b/a/c/b$i;

    invoke-direct {v0}, La/b/a/c/b$i;-><init>()V

    :goto_0
    sput-object v0, La/b/a/c/b;->a:La/b/a/c/b$j;

    goto :goto_1

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, La/b/a/c/b$h;

    invoke-direct {v0}, La/b/a/c/b$h;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, La/b/a/c/b$g;

    invoke-direct {v0}, La/b/a/c/b$g;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, La/b/a/c/b$f;

    invoke-direct {v0}, La/b/a/c/b$f;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, La/b/a/c/b$e;

    invoke-direct {v0}, La/b/a/c/b$e;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    new-instance v0, La/b/a/c/b$d;

    invoke-direct {v0}, La/b/a/c/b$d;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    new-instance v0, La/b/a/c/b$c;

    invoke-direct {v0}, La/b/a/c/b$c;-><init>()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    new-instance v0, La/b/a/c/b$b;

    invoke-direct {v0}, La/b/a/c/b$b;-><init>()V

    goto :goto_0

    :cond_7
    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    new-instance v0, La/b/a/c/b$a;

    invoke-direct {v0}, La/b/a/c/b$a;-><init>()V

    goto :goto_0

    :cond_8
    new-instance v0, La/b/a/c/b$j;

    invoke-direct {v0}, La/b/a/c/b$j;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/b/a/c/b;->a:La/b/a/c/b$j;

    invoke-virtual {v0, p0}, La/b/a/c/b$j;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    sget-object v0, La/b/a/c/b;->a:La/b/a/c/b$j;

    invoke-virtual {v0, p0}, La/b/a/c/b$j;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    sget-object v0, La/b/a/c/b;->a:La/b/a/c/b$j;

    invoke-virtual {v0, p0}, La/b/a/c/b$j;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
