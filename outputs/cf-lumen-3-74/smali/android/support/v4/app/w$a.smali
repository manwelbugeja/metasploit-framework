.class public Landroid/support/v4/app/w$a;
.super Landroid/support/v4/app/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field private final b:[Landroid/support/v4/app/f0;

.field private final c:[Landroid/support/v4/app/f0;

.field private d:Z

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/w$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/f0;[Landroid/support/v4/app/f0;Z)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/f0;[Landroid/support/v4/app/f0;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/b0;-><init>()V

    iput p1, p0, Landroid/support/v4/app/w$a;->e:I

    invoke-static {p2}, Landroid/support/v4/app/w$c;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/w$a;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/w$a;->g:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/w$a;->a:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/support/v4/app/w$a;->b:[Landroid/support/v4/app/f0;

    iput-object p6, p0, Landroid/support/v4/app/w$a;->c:[Landroid/support/v4/app/f0;

    iput-boolean p7, p0, Landroid/support/v4/app/w$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/w$a;->d:Z

    return v0
.end method

.method public bridge synthetic c()[Landroid/support/v4/app/h0;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/w$a;->h()[Landroid/support/v4/app/f0;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/w$a;->e:I

    return v0
.end method

.method public bridge synthetic f()[Landroid/support/v4/app/h0;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/w$a;->i()[Landroid/support/v4/app/f0;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()[Landroid/support/v4/app/f0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->c:[Landroid/support/v4/app/f0;

    return-object v0
.end method

.method public i()[Landroid/support/v4/app/f0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->b:[Landroid/support/v4/app/f0;

    return-object v0
.end method
