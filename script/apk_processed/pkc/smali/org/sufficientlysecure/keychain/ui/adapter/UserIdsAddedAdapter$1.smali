.class Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;
.super Ljava/lang/Object;
.source "UserIdsAddedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

.field final synthetic val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 83
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 87
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->mModel:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->remove(Ljava/lang/Object;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
