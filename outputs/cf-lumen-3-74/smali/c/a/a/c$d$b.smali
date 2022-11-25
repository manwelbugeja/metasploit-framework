.class Lc/a/a/c$d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/c$d;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/c$d;


# direct methods
.method constructor <init>(Lc/a/a/c$d;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d$b;->a:Lc/a/a/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc/a/a/c$d$b;->a:Lc/a/a/c$d;

    invoke-static {v0}, Lc/a/a/c$d;->c(Lc/a/a/c$d;)V

    return-void
.end method
