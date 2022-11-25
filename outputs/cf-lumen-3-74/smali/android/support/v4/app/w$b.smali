.class public Landroid/support/v4/app/w$b;
.super Landroid/support/v4/app/w$m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/w$m;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/support/v4/app/v;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$m;->b:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroid/support/v4/app/w$m;->d:Z

    iget-object v2, p0, Landroid/support/v4/app/w$m;->c:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/w$b;->e:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/app/c0;->a(Landroid/support/v4/app/v;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$b;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/app/w$c;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/w$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method
