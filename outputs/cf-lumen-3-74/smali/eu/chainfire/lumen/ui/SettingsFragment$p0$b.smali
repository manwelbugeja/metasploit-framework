.class Leu/chainfire/lumen/ui/SettingsFragment$p0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$p0;->b([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;[Z)V
    .locals 0

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$b;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$b;->a:[Z

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$b;->a:[Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p2, p3

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
