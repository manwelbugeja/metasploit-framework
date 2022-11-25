.class Landroid/support/v4/app/n$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/app/n$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Landroid/support/v4/app/n;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/n$k;->d:Landroid/support/v4/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/n$k;->a:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/app/n$k;->b:I

    iput p4, p0, Landroid/support/v4/app/n$k;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/n$k;->d:Landroid/support/v4/app/n;

    iget-object v0, v0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v4/app/n$k;->b:I

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/n$k;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->G0()Landroid/support/v4/app/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n$k;->d:Landroid/support/v4/app/n;

    iget-object v3, p0, Landroid/support/v4/app/n$k;->a:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/n$k;->b:I

    iget v5, p0, Landroid/support/v4/app/n$k;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->N0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
