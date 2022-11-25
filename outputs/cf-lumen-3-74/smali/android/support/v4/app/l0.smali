.class public Landroid/support/v4/app/l0;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/arch/lifecycle/b;


# instance fields
.field private a:Landroid/arch/lifecycle/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, La/b/a/b/h;

    invoke-direct {v0}, La/b/a/b/h;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/c;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/c;-><init>(Landroid/arch/lifecycle/b;)V

    iput-object v0, p0, Landroid/support/v4/app/l0;->a:Landroid/arch/lifecycle/c;

    return-void
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l0;->a:Landroid/arch/lifecycle/c;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/f;->e(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/l0;->a:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$b;->c:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->g(Landroid/arch/lifecycle/a$b;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
