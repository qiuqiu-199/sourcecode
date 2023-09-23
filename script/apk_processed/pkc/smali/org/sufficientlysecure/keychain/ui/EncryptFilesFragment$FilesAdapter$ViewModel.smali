.class public Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;
.super Ljava/lang/Object;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewModel"
.end annotation


# instance fields
.field fileSize:J

.field filename:Ljava/lang/String;

.field inputUri:Landroid/net/Uri;

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 791
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    const/16 v0, 0x30

    .line 793
    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 794
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v3, v4, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->thumbnail:Landroid/graphics/Bitmap;

    .line 795
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->filename:Ljava/lang/String;

    .line 796
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->fileSize:J

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;---><init>(Landroid/content/Context;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v5, :cond_5

    .line 805
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 806
    :cond_1
    check-cast v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    .line 807
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_2
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 816
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 821
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
