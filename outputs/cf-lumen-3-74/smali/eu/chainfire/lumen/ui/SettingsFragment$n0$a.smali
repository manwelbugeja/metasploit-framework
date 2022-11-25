.class Leu/chainfire/lumen/ui/SettingsFragment$n0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$n0;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment$n0;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$n0;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$a;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0$a;->a:Leu/chainfire/lumen/ui/SettingsFragment$n0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
