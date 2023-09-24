.class Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "IdentitiesCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->setIdentitiesAdapter(Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

.field final synthetic val$identityAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;->val$identityAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    move-object/16 v2, p0

    .line 57
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;->val$identityAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/view/IdentitiesCardView$1;--->onChanged()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
