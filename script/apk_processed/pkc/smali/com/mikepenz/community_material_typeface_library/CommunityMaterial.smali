.class public Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;
.super Ljava/lang/Object;
.source "CommunityMaterial.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/ITypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;
    }
.end annotation


# static fields
.field private static final TTF_FILE:Ljava/lang/String; = "communitymaterial-font-v1.5.54.ttf"

.field private static mChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static typeface:Landroid/graphics/Typeface;


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


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, "Templarian / Community / Google"

    return-object v0
.end method

.method public getCharacters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-static {}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->values()[Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 46
    invoke-virtual {v4}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->name()Ljava/lang/String;

    move-result-object v5

    iget-char v4, v4, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->character:C

    .line 47
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 46
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    sput-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    .line 52
    :cond_1
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Material Design Icons are the official open-source icons featured in the Google Material Design specification."

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    const-string v0, "Community Material Design"

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->valueOf(Ljava/lang/String;)Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    move-result-object p1

    return-object p1
.end method

.method public getIconCount()I
    .locals 1

    .line 72
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->mChars:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getIcons()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 79
    invoke-static {}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->values()[Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 80
    invoke-virtual {v4}, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    const-string v0, "Templates - Free, Community Icons - SIL Open Font License 1.1, Google Material Design Icons: Attribution 4.0 International"

    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://raw.githubusercontent.com/Templarian/MaterialDesign/master/license.txt"

    return-object v0
.end method

.method public getMappingPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "cmd"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 113
    sget-object v0, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/communitymaterial-font-v1.5.54.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    :goto_0
    sget-object p1, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://materialdesignicons.com/"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.54"

    return-object v0
.end method
