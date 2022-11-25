.class public final enum Leu/chainfire/lumen/a$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/chainfire/lumen/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leu/chainfire/lumen/a$b;

.field public static final enum b:Leu/chainfire/lumen/a$b;

.field public static final enum c:Leu/chainfire/lumen/a$b;

.field public static final enum d:Leu/chainfire/lumen/a$b;

.field public static final enum e:Leu/chainfire/lumen/a$b;

.field public static final enum f:Leu/chainfire/lumen/a$b;

.field public static final enum g:Leu/chainfire/lumen/a$b;

.field public static final enum h:Leu/chainfire/lumen/a$b;

.field private static final synthetic i:[Leu/chainfire/lumen/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Leu/chainfire/lumen/a$b;

    const-string v1, "ARM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/lumen/a$b;->a:Leu/chainfire/lumen/a$b;

    new-instance v1, Leu/chainfire/lumen/a$b;

    const-string v3, "ARMV7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leu/chainfire/lumen/a$b;->b:Leu/chainfire/lumen/a$b;

    new-instance v3, Leu/chainfire/lumen/a$b;

    const-string v5, "ARM64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leu/chainfire/lumen/a$b;->c:Leu/chainfire/lumen/a$b;

    new-instance v5, Leu/chainfire/lumen/a$b;

    const-string v7, "X86"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leu/chainfire/lumen/a$b;->d:Leu/chainfire/lumen/a$b;

    new-instance v7, Leu/chainfire/lumen/a$b;

    const-string v9, "X64"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Leu/chainfire/lumen/a$b;->e:Leu/chainfire/lumen/a$b;

    new-instance v9, Leu/chainfire/lumen/a$b;

    const-string v11, "MIPS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Leu/chainfire/lumen/a$b;->f:Leu/chainfire/lumen/a$b;

    new-instance v11, Leu/chainfire/lumen/a$b;

    const-string v13, "MIPS64"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Leu/chainfire/lumen/a$b;->g:Leu/chainfire/lumen/a$b;

    new-instance v13, Leu/chainfire/lumen/a$b;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Leu/chainfire/lumen/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Leu/chainfire/lumen/a$b;->h:Leu/chainfire/lumen/a$b;

    const/16 v15, 0x8

    new-array v15, v15, [Leu/chainfire/lumen/a$b;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Leu/chainfire/lumen/a$b;->i:[Leu/chainfire/lumen/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/lumen/a$b;
    .locals 1

    const-class v0, Leu/chainfire/lumen/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/chainfire/lumen/a$b;

    return-object p0
.end method

.method public static values()[Leu/chainfire/lumen/a$b;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/a$b;->i:[Leu/chainfire/lumen/a$b;

    invoke-virtual {v0}, [Leu/chainfire/lumen/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/chainfire/lumen/a$b;

    return-object v0
.end method
