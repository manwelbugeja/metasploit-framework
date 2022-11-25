.class public Leu/chainfire/lumen/drivers/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/a$c;,
        Leu/chainfire/lumen/drivers/a$d;
    }
.end annotation


# instance fields
.field private final a:Leu/chainfire/lumen/drivers/a$d;

.field private final b:Landroid/content/Context;

.field private c:Leu/chainfire/lumen/drivers/a$c;

.field private d:Z

.field private e:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private f:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Leu/chainfire/lumen/drivers/a$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/a;->c:Leu/chainfire/lumen/drivers/a$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/a;->d:Z

    new-instance v0, Leu/chainfire/lumen/drivers/a$a;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/a$a;-><init>(Leu/chainfire/lumen/drivers/a;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/a;->e:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    new-instance v0, Leu/chainfire/lumen/drivers/a$b;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/a$b;-><init>(Leu/chainfire/lumen/drivers/a;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/a;->f:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a;->b:Landroid/content/Context;

    iput-object p2, p0, Leu/chainfire/lumen/drivers/a;->a:Leu/chainfire/lumen/drivers/a$d;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/drivers/a;)Leu/chainfire/lumen/drivers/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/a;->a:Leu/chainfire/lumen/drivers/a$d;

    return-object p0
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Leu/chainfire/lumen/drivers/a;->c(ZLandroid/os/Handler;)V

    return-void
.end method

.method public c(ZLandroid/os/Handler;)V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/a;->d:Z

    if-eq p1, v0, :cond_3

    const-string v0, "accessibility"

    if-eqz p1, :cond_2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/a;->c:Leu/chainfire/lumen/drivers/a$c;

    if-nez v1, :cond_1

    new-instance v1, Leu/chainfire/lumen/drivers/a$c;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p2}, Leu/chainfire/lumen/drivers/a$c;-><init>(Leu/chainfire/lumen/drivers/a;Landroid/os/Handler;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/a;->c:Leu/chainfire/lumen/drivers/a$c;

    :cond_1
    iget-object p2, p0, Leu/chainfire/lumen/drivers/a;->c:Leu/chainfire/lumen/drivers/a$c;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Leu/chainfire/lumen/drivers/a$c;->a(Landroid/content/ContentResolver;)V

    iget-object p2, p0, Leu/chainfire/lumen/drivers/a;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a;->e:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a;->f:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Leu/chainfire/lumen/drivers/a;->c:Leu/chainfire/lumen/drivers/a$c;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2, v1}, Leu/chainfire/lumen/drivers/a$c;->b(Landroid/content/ContentResolver;)V

    iget-object p2, p0, Leu/chainfire/lumen/drivers/a;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a;->e:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a;->f:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :goto_1
    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/a;->d:Z

    :cond_3
    return-void
.end method
