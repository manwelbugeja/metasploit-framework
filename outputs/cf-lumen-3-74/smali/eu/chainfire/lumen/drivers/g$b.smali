.class Leu/chainfire/lumen/drivers/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/g;->c(ZLc/a/a/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/g;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/g;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g$b;->a:Leu/chainfire/lumen/drivers/g;

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

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "libcflumen_"

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    add-int/lit8 p3, p3, 0xb

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, ".so"

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-le p3, v0, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/drivers/g$b;->a:Leu/chainfire/lumen/drivers/g;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Leu/chainfire/lumen/drivers/g;->b(Leu/chainfire/lumen/drivers/g;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
