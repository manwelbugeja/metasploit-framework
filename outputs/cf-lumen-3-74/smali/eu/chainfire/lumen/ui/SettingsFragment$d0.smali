.class Leu/chainfire/lumen/ui/SettingsFragment$d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Sensor;

.field final synthetic b:Landroid/hardware/SensorManager;

.field final synthetic c:Landroid/hardware/SensorEventListener;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/hardware/Sensor;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->a:Landroid/hardware/Sensor;

    iput-object p3, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->b:Landroid/hardware/SensorManager;

    iput-object p4, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->c:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->a:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->b:Landroid/hardware/SensorManager;

    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$d0;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
