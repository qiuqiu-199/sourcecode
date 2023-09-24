.class Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbnt:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$1;->zzbnt:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$1;->zzbnt:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-static {p1}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zza(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment$1;->zzbnt:Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;

    invoke-static {p1}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzb(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V

    :cond_0
    return-void
.end method
