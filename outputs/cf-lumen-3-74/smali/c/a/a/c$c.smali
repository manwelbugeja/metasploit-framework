.class Lc/a/a/c$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static f:I


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I

.field private final c:Lc/a/a/c$f;

.field private final d:Lc/a/a/c$e;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILc/a/a/c$f;Lc/a/a/c$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/c$c;->a:[Ljava/lang/String;

    iput p2, p0, Lc/a/a/c$c;->b:I

    iput-object p3, p0, Lc/a/a/c$c;->c:Lc/a/a/c$f;

    iput-object p4, p0, Lc/a/a/c$c;->d:Lc/a/a/c$e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    sget p4, Lc/a/a/c$c;->f:I

    add-int/2addr p4, p2

    sput p4, Lc/a/a/c$c;->f:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p2, "-%08x"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/c$c;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc/a/a/c$c;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$c;->a:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lc/a/a/c$c;)Lc/a/a/c$f;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$c;->c:Lc/a/a/c$f;

    return-object p0
.end method

.method static synthetic c(Lc/a/a/c$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lc/a/a/c$c;)Lc/a/a/c$e;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$c;->d:Lc/a/a/c$e;

    return-object p0
.end method

.method static synthetic e(Lc/a/a/c$c;)I
    .locals 0

    iget p0, p0, Lc/a/a/c$c;->b:I

    return p0
.end method
