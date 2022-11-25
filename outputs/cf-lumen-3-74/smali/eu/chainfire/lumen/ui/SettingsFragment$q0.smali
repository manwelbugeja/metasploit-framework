.class Leu/chainfire/lumen/ui/SettingsFragment$q0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q0"
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

.field private b:Landroid/app/ProgressDialog;

.field final synthetic c:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/lumen/drivers/d;->x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;

    move-result-object v2

    invoke-static {v1, v2}, Leu/chainfire/lumen/ui/SettingsFragment;->w(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/drivers/d;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/d;->y()Z

    move-result v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v2}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/d;->w()I

    move-result v2

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/drivers/d;->s()V

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v4}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v4

    iget-object v4, v4, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v4}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v5}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v5

    iget-object v5, v5, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    const-string v6, "cflumen"

    invoke-virtual {v5, v6}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v5}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v5

    iget-object v5, v5, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    const-string v6, "compatibility"

    invoke-virtual {v5, v6}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v5}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v6

    new-instance v7, Leu/chainfire/lumen/a$d;

    sget-object v5, Leu/chainfire/lumen/a$e;->f:Leu/chainfire/lumen/a$e;

    invoke-direct {v7, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-string v11, "testDriver"

    invoke-virtual/range {v6 .. v11}, Leu/chainfire/lumen/drivers/d;->r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v7, Lc/a/a/c$b;

    invoke-direct {v7}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {v7}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    invoke-virtual {v7}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object v7

    invoke-virtual {v7}, Lc/a/a/c$d;->J()Z

    const-string v8, "dumpsys SurfaceFlinger"

    new-instance v9, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;

    invoke-direct {v9, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$q0$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$q0;[I)V

    invoke-virtual {v7, v8, v0, v9}, Lc/a/a/c$d;->p(Ljava/lang/String;ILc/a/a/c$f;)V

    invoke-virtual {v7}, Lc/a/a/c$d;->J()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v5}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v5

    iget-object v5, v5, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v5, v3}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {v3, v4}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iget-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/drivers/d;->t()V

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Leu/chainfire/lumen/drivers/d;->B(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Leu/chainfire/lumen/drivers/d;->B(I)V

    :goto_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Leu/chainfire/lumen/drivers/d;->A(J)V

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->v(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/d;->v()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    aget p1, p1, v0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_0
    aget p1, p1, v0

    goto :goto_1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090014

    :goto_0
    const v2, 0x7f090098

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Leu/chainfire/lumen/ui/a;->c(Landroid/content/Context;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090010

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->c:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090012

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$q0;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->a:Landroid/content/Context;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$q0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
