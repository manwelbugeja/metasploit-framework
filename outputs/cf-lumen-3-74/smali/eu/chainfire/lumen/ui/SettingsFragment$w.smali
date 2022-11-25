.class Leu/chainfire/lumen/ui/SettingsFragment$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Leu/chainfire/lumen/ui/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->z()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Z)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-boolean p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 6

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->g:Leu/chainfire/lumen/a$i;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$i;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->g:Leu/chainfire/lumen/a$i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Leu/chainfire/lumen/a$i;->d(J)V

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/a;->a()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$w;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f09009a

    new-instance v1, Leu/chainfire/lumen/ui/SettingsFragment$w$b;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/SettingsFragment$w$b;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$w;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f090089

    new-instance v1, Leu/chainfire/lumen/ui/SettingsFragment$w$a;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/SettingsFragment$w$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$w;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
