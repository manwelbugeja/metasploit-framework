.class Leu/chainfire/lumen/ui/SettingsFragment$o0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/ProgressDialog;

.field final synthetic d:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->a:Landroid/content/Context;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    new-instance p1, Lc/a/a/c$b;

    invoke-direct {p1}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {p1}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    invoke-virtual {p1}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object p1

    new-instance v0, Leu/chainfire/lumen/root/a;

    invoke-direct {v0}, Leu/chainfire/lumen/root/a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lc/a/a/b;->d(Lc/a/a/c$d;Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Leu/chainfire/lumen/drivers/g;->d(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/g;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/g;->f(Lc/a/a/c$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x3

    goto :goto_0
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v0

    const v1, 0x7f090016

    const v2, 0x7f090098

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->o(Leu/chainfire/lumen/ui/SettingsFragment;)Landroid/preference/ListPreference;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->L(Landroid/content/Context;)Leu/chainfire/lumen/drivers/m;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->b:Ljava/lang/String;

    const-string v1, "anti_flicker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->b:Leu/chainfire/lumen/drivers/m$g;

    goto :goto_1

    :cond_2
    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    :goto_1
    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/m;->P(Leu/chainfire/lumen/drivers/m$g;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$o0;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$o0;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->a:Landroid/content/Context;

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$o0;->c([Ljava/lang/Integer;)V

    return-void
.end method
