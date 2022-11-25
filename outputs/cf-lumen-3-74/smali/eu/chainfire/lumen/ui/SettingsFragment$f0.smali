.class Leu/chainfire/lumen/ui/SettingsFragment$f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f0;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$f0;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f0;->a:Landroid/content/Context;

    const-class v2, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$f0;->b:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
