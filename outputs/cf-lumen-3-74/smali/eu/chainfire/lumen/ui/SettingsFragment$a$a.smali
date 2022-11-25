.class Leu/chainfire/lumen/ui/SettingsFragment$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/datetimepicker/time/e$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$a;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment$a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$a$a;->a:Leu/chainfire/lumen/ui/SettingsFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$a$a;->a:Leu/chainfire/lumen/ui/SettingsFragment$a;

    iget-object p1, p1, Leu/chainfire/lumen/ui/SettingsFragment$a;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {p1, p2, p3}, Leu/chainfire/lumen/a$l;->f(II)V

    return-void
.end method
