.class public Lcom/keepassdroid/assets/TypefaceFactory;
.super Ljava/lang/Object;
.source "TypefaceFactory.java"


# static fields
.field private static typefaceMap:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap;-><init>(II)V

    sput-object v0, Lcom/keepassdroid/assets/TypefaceFactory;->typefaceMap:Lorg/apache/commons/collections/map/ReferenceMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 41
    sget-object v0, Lcom/keepassdroid/assets/TypefaceFactory;->typefaceMap:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
