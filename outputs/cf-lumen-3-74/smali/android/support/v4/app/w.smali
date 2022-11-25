.class public Landroid/support/v4/app/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/w$a;,
        Landroid/support/v4/app/w$b;,
        Landroid/support/v4/app/w$m;,
        Landroid/support/v4/app/w$c;,
        Landroid/support/v4/app/w$j;,
        Landroid/support/v4/app/w$i;,
        Landroid/support/v4/app/w$h;,
        Landroid/support/v4/app/w$g;,
        Landroid/support/v4/app/w$f;,
        Landroid/support/v4/app/w$e;,
        Landroid/support/v4/app/w$k;,
        Landroid/support/v4/app/w$d;,
        Landroid/support/v4/app/w$l;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/app/w$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/w$j;

    invoke-direct {v0}, Landroid/support/v4/app/w$j;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/app/w;->a:Landroid/support/v4/app/w$l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/w$i;

    invoke-direct {v0}, Landroid/support/v4/app/w$i;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/app/w$h;

    invoke-direct {v0}, Landroid/support/v4/app/w$h;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/app/w$g;

    invoke-direct {v0}, Landroid/support/v4/app/w$g;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/app/w$f;

    invoke-direct {v0}, Landroid/support/v4/app/w$f;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/app/w$e;

    invoke-direct {v0}, Landroid/support/v4/app/w$e;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/app/w$k;

    invoke-direct {v0}, Landroid/support/v4/app/w$k;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method static a(Landroid/support/v4/app/u;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/u;",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/w$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/w$a;

    invoke-interface {p0, v0}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/b0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/app/c0;->c(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
