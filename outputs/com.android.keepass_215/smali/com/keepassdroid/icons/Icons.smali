.class public Lcom/keepassdroid/icons/Icons;
.super Ljava/lang/Object;
.source "Icons.java"


# static fields
.field private static icons:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildList()V
    .locals 5

    .line 33
    sget-object v0, Lcom/keepassdroid/icons/Icons;->icons:Landroid/util/SparseIntArray;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/keepassdroid/icons/Icons;->icons:Landroid/util/SparseIntArray;

    .line 36
    const-class v0, Lcom/android/keepass/R$drawable;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 41
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic\\d{2}.*"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x4

    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x45

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    :try_start_0
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    sget-object v4, Lcom/keepassdroid/icons/Icons;->icons:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static count()I
    .locals 1

    .line 69
    invoke-static {}, Lcom/keepassdroid/icons/Icons;->buildList()V

    .line 71
    sget-object v0, Lcom/keepassdroid/icons/Icons;->icons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public static iconToResId(I)I
    .locals 2

    .line 63
    invoke-static {}, Lcom/keepassdroid/icons/Icons;->buildList()V

    .line 65
    sget-object v0, Lcom/keepassdroid/icons/Icons;->icons:Landroid/util/SparseIntArray;

    const v1, 0x7f0800b2

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method
