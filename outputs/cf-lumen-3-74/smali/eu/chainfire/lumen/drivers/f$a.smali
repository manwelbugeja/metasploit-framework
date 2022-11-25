.class Leu/chainfire/lumen/drivers/f$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Z

.field private d:Landroid/app/ProgressDialog;

.field final synthetic e:Leu/chainfire/lumen/drivers/f;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/drivers/f;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/f$a;->e:Leu/chainfire/lumen/drivers/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Leu/chainfire/lumen/drivers/f$a;->a:Landroid/content/Context;

    iput-boolean p3, p0, Leu/chainfire/lumen/drivers/f$a;->b:Z

    iput-boolean p4, p0, Leu/chainfire/lumen/drivers/f$a;->c:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-boolean p1, p0, Leu/chainfire/lumen/drivers/f$a;->b:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Integer;

    const v2, 0x7f09009e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/f$a;->e:Leu/chainfire/lumen/drivers/f;

    iget-boolean v2, p0, Leu/chainfire/lumen/drivers/f$a;->c:Z

    invoke-virtual {p1, v2}, Leu/chainfire/lumen/drivers/f;->d(Z)Z

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Integer;

    const v2, 0x7f090127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/f$a;->e:Leu/chainfire/lumen/drivers/f;

    iget-boolean v2, p0, Leu/chainfire/lumen/drivers/f$a;->c:Z

    invoke-virtual {p1, v2}, Leu/chainfire/lumen/drivers/f;->j(Z)Z

    :goto_0
    new-array p1, v1, [Ljava/lang/Integer;

    const v1, 0x7f0900b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v0, 0x9c4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reboot"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/f$a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, " recovery"

    goto :goto_2

    :cond_1
    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/c$h;->d(Ljava/lang/String;)Ljava/util/List;

    :catch_1
    :goto_3
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/f$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/f$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/f$a;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/f$a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/f$a;->a:Landroid/content/Context;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/f$a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/f$a;->c([Ljava/lang/Integer;)V

    return-void
.end method
