.class Leu/chainfire/lumen/drivers/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$b;->a:Leu/chainfire/lumen/drivers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ACCESS"

    const-string v1, "touch state --> %d"

    invoke-static {p1, v1, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/a$b;->a:Leu/chainfire/lumen/drivers/a;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/a;->a(Leu/chainfire/lumen/drivers/a;)Leu/chainfire/lumen/drivers/a$d;

    move-result-object p1

    invoke-interface {p1}, Leu/chainfire/lumen/drivers/a$d;->a()V

    return-void
.end method
