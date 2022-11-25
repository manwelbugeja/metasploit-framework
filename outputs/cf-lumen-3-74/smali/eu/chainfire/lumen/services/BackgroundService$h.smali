.class Leu/chainfire/lumen/services/BackgroundService$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/services/BackgroundService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/services/BackgroundService;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$h;->b:Leu/chainfire/lumen/services/BackgroundService;

    iput-object p2, p0, Leu/chainfire/lumen/services/BackgroundService$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$h;->b:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/a;->f()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService$h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/services/BackgroundService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
