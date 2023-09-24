.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;
.super Ljava/lang/Object;
.source "CreateKeyEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewModel"
.end annotation


# instance fields
.field email:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 248
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;->email:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 254
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;->email:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
